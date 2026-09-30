#include <stdio.h>

static int parse_args(int argc, char **argv, const char **destination)
{
    if (argc != 2 || argv[1][0] == '\0')
    {
        fprintf(stderr, "Usage: %s <destination>\n", argv[0]);
        return (1);
    }
    *destination = argv[1];
    return (0);
}

int main(int argc, char **argv)
{
    const char *destination;

    if (parse_args(argc, argv, &destination) != 0)
        return (1);
    printf("ft_ping: destination: %s\n", destination);
    return (0);
}
