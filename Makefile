# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: berbay <berbay@student.42istanbul.com.t    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/09 19:02:40 by berbay            #+#    #+#              #
#    Updated: 2023/04/09 20:21:00 by berbay           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

CC = gcc

CFLAGS = -Wall -Wextra -Werror

LIBFT =  ./Libft/libft.a

SRC = deneme1.c deneme2.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(SRC) $(LIBFT)
	$(CC) $(CFLAGS) $(SRC) $(LIBFT) -o $@

$(LIBFT):
	make -C ./Libft
	make bonus -C ./Libft

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm fclean -C ./libft

re: fclean all

git:
	git add .
	git status
	git commit -m "process"

.PHONY: clean fclean re all git