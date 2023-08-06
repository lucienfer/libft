# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: luciefer <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/25 11:26:48 by luciefer          #+#    #+#              #
#    Updated: 2022/12/01 11:29:11 by luciefer         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC			=	printf/ft_printf.c	\
				printf/ft_putchar.c	\
				printf/ft_puthexa.c	\
				printf/ft_putnbr.c		\
				printf/ft_putadresse.c		\

OBJ			=	${SRC:.c=.o}

DIRINC		=	./include/

NAME		=	libftprintf.a

DIRLFT		=	./libft/

NAMELFT		=	libft.a

CC			=	gcc

RM			=	rm -f

AR			=	ar rc

RN			=	ranlib

CFLAGS		=	-Wall -Wextra -Werror -I${DIRINC}

$(NAME):	${OBJ}
			${MAKE} -C ${DIRLFT}
			cp ${DIRLFT}${NAMELFT} ${NAME}
			${AR} ${NAME} ${OBJ}
			${RN} ${NAME}

all:		$(NAME)

clean:
			${RM} ${OBJ}
			${MAKE} -C ${DIRLFT} clean

fclean:		clean
			${RM} $(NAME)
			${MAKE} -C ${DIRLFT} fclean

re:		fclean all

.PHONY:		all clean fclean re
