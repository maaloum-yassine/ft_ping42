CC			=	cc
CFLAGS		=	
# CFLAGS		=	-Wall -Wextra -Werror 
NAME		= 	ft_ping
SRC			=	src/main.c \
				src/Parse/argument_validator.c

				



RESET		= 	\033[1;97m
GREEN 		= 	\033[1;32m
RED			= 	\033[1;31m



OBJ			= $(patsubst src/%.c,obj/%.o,$(SRC))
OBJ_DIR 	= obj/
OBJ_SUBDIRS =  $(OBJ_DIR)Parse

all: $(OBJ_SUBDIRS) $(NAME)

$(OBJ_SUBDIRS):
	@echo "$(GREEN)$(OBJ_DIR) : Created ! [^_^]$(RESET)"
	mkdir -p $(OBJ_SUBDIRS)

$(NAME): $(OBJ)
		@$(CC) $(CFLAGS) $(OBJ) -o $(NAME)
		@echo "$(GREEN)$(NAME) : Created ! [^_^]$(RESET)"

obj/%.o: src/%.c
		$(CC) $(CFLAGS) -c  $< -o $@

clean:
		@rm -rf $(OBJ_DIR)
		@echo "$(RED)$(NAME) : file obj deleted ! [^_^]$(RESET)"

fclean: clean
			@rm -f $(NAME)
			@echo "$(RED)$(NAME) : file obj and file executable deleted ! [^_^]$(RESET)"
re: fclean all
