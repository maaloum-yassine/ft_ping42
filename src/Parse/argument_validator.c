#include "../../include/Parse.h"

unsigned char ft_check_arguments (int argc, char **argv)
{
    if (argc == 1)
    {
        fprintf(stderr, "ping: usage error: Destination address required\n");
        return (0);
    }

    return (1);
}