#include "server.h"

int server::initializeServer()
{
    struct sockaddr_in address = {};
    int opt = 1;
    int addrlen = sizeof(address);
    if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0)
    {
        perror("socket failed");
        exit(EXIT_FAILURE);
        return 0;
    }

    if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt)))
    {
        perror("setsockopt");
        exit(EXIT_FAILURE);
        return 0;
    }
    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(PORT);

    if (bind(server_fd, (struct sockaddr *)&address, sizeof(address)) < 0)
    {
        perror("bind failed");
        exit(EXIT_FAILURE);
        return 0;
    }
    if (listen(server_fd, 1) < 0)
    {
        perror("listen");
        exit(EXIT_FAILURE);
        return 0;
    }
    if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t *)&addrlen)) < 0)
    {
        perror("accept");
        exit(EXIT_FAILURE);
        return 0;
    }
    const char *hello = "Hello from server";
    valread = read(new_socket, buffer, 1024);
    printf("%s\n", buffer);
    send(new_socket, hello, strlen(hello), 0);
    printf("Hello message sent\n");
    return 1;
}
/**
 * @brief lee el mensaje del cliente
 *
 * @return const char* mensaje
 */
const char *server::readSocket()
{
    memset(buffer, 0, valread);
    // cout << "Client: ";
    valread = read(new_socket, buffer, 1024);
    // cout << buffer << endl;
    return buffer;
}
/**
 * @brief envia al cliente un mensaje determinado
 *
 * @param msg
 */
void server::sendToClient(const char *msg)
{
    send(new_socket, msg, strlen(msg), 0);
    // cout << "Message sent: " << msg << endl;
}
/**
 * @brief lee los nombres enviados por el cliente y los almacena
 *
 */
void server::readNames()
{
    player1_name = readSocket();
    sendToClient(to_string(pointsP1).c_str());
    player2_name = readSocket();
    sendToClient(to_string(pointsP2).c_str());
}
/**
 * @brief define el orden de los turnos
 *
 */
void server::logicOrder()
{
    readSocket();
    srand(time(0));
    int i = (rand() % 2) + 1;
    turn = i;
    sendToClient(to_string(i).c_str());
}

/**
 * @brief pide a la matriz buscar una carta
 *
 * @param c posición de la carta en forma: i,j
 * @return string imagen que contiene la carta
 */
string server::readCard(const char *c)
{
    return m.getImage(m.seekCard(c[0] - 48, c[2] - 48)); //-48 sirve para convertir de ASCII a int
}
/**
 * @brief lee el mensaje del cliente y le envía la carta solicitada
 *
 */
void server::logicRevealCard()
{
    sendToClient(readCard(readSocket()).c_str());
}
/**
 * @brief añade puntos a los jugadores dependiendo del turno
 *
 */
void server::logicAddPoints()
{
    if (turn == 1)
    {
        if (m.get_inMemory())
        {
            pointsP1 += 100;
        }
        pointsP1 += 100 * multiplier;
    }
    else
    {
        if (m.get_inMemory())
        {
            pointsP2 += 100;
        }
        pointsP2 += 100 * multiplier;
    }
}
/**
 * @brief realiza un cambio de turno
 *
 */
void server::logicChangeTurn()
{
    if (turn == 1)
    {
        turn = 2;
    }
    else
    {
        turn = 1;
    }
}
/**
 * @brief secuencia de un turno completo para el juego de memoria
 *
 */
void server::logicTurn()
{
    logicRevealCard();
    logicRevealCard();
    multiplier = readSocket()[0] - 48; //-48 sirve para convertir de ASCII a int
    sendToClient("Ok");
    readSocket(); // Is Pair?
    if (m.isPairs())
    {
        logicAddPoints();
        sendToClient("1");
    }
    else
    {
        sendToClient("0");
    }
    readSocket(); // points?
    if (turn == 1)
    {
        sendToClient(to_string(pointsP1).c_str());
    }
    else
    {
        sendToClient(to_string(pointsP2).c_str());
    }
    m.set_inMemory(false);
    if ((string)readSocket() == "false")
    { // double turn?
        logicChangeTurn();
    }
    sendToClient("Ok");
}

long server::get_mem_usage() {
    struct rusage myusage;

    getrusage(RUSAGE_SELF, &myusage);
    return myusage.ru_maxrss;
}

