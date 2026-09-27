CC			=	cc
CFLAGS		=	-Wall -Wextra -Werror 
NAME			= ft_ping
SRC			=	main.c \
				



RESET		= 	\033[1;97m
GREEN 		= 	\033[1;32m
RED			= 	\033[1;31m

OBJ		=	$(SRC:.c=.o)
OBJ		:=	$(addprefix obj/, $(OBJ))
OBJ_DIR		=	obj/

all: $(OBJ_DIR) $(NAME)

$(OBJ_DIR):
	@echo "$(GREEN)$(OBJ_DIR) : Created ! [^_^]$(RESET)"
	mkdir -p $(OBJ_DIR)

$(NAME): $(OBJ)
		@$(CC) $(CFLAGS) $(OBJ) -o $(NAME)
		@echo "$(GREEN)$(NAME) : Created ! [^_^]$(RESET)"

# obj/%.o: %.cpp PmergeMe.hpp
obj/%.o: %.c
		$(CC) $(CFLAGS) -c  $< -o $@

clean:
		@rm -rf obj
		@echo "$(RED)$(NAME) : file obj deleted ! [^_^]$(RESET)"

fclean: clean
			@rm -f $(NAME)
			@echo "$(RED)$(NAME) : file obj and file executable deleted ! [^_^]$(RESET)"
re: fclean all