NAME		= so_long
CC			= gcc
FLAGS		= -Werror -Wextra -Wall -g
MLXFLAGS	= -lmlx -framework OPENGL -framework Appkit
GREEN		= \033[0;32m
RED			= \033[0;31m
RESET		= \033[0m
RM			= rm -f

FUNC		= srcs/so_long srcs/draw srcs/check srcs/errors srcs/info \
			  srcs/close_game  srcs/movements \
			  get_next_line/get_next_line get_next_line/get_next_line_utils \

SRC			= $(addsuffix .c, $(FUNC))
OBJ			= $(addsuffix .o, $(FUNC))


.c.o: $(FILES) $(NAME)
	@$(CC) $(FLAGS) -Imlx -c -o $@ $^

$(NAME)		: $(OBJ)
		@$(MAKE) -s -C mlx 
		@mv mlx/libmlx.a .
		@$(CC) $(FLAGS)  $(OBJ) -L . $(MLXFLAGS) -o $(NAME)
		@echo "$(GREEN)make done$(RESET)"

all			: $(NAME)

clean		:
		@$(RM) $(OBJ) 
		@$(RM) mlx/*.o
		@echo "$(RED)clean done$(RESET)"

fclean		: clean
		@$(RM) $(NAME)
		@$(RM) libmlx.a
		@echo "$(RED)fclean done$(RESET)"

re			: fclean all

.PHONY		: all clean fclean re
