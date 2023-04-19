# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ecozturk <ecozturk@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/07 17:52:42 by ecozturk          #+#    #+#              #
#    Updated: 2023/04/19 13:29:58 by ecozturk         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= ft_printf.c function.c 

OBJS 		= $(SRCS:.c=.o)

CC			= gcc
CFLAGS		=-Wall -Wextra -Werror

NAME		= libftprintf.a

all:		$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)
clean: 
			rm -f $(OBJS)

fclean: 	clean
			rm -f $(NAME)

re:			fclean all

.PHONY:		all clean fclean re
