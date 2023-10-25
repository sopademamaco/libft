# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: davioliv <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/17 10:03:20 by davioliv          #+#    #+#              #
#    Updated: 2023/05/03 16:03:26 by davioliv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a
SRCS	= ft_isdigit.c ft_isalpha.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcat.c ft_strlcpy.c ft_strncmp.c ft_tolower.c ft_toupper.c ft_calloc.c ft_memchr.c ft_memcmp.c ft_strchr.c ft_strdup.c ft_strnstr.c ft_strrchr.c ft_substr.c ft_atoi.c ft_strjoin.c
OBJS	= ${SRCS:.c=.o}
HEADER	= libft.h
CC	= gcc ${CFLAGS}
CFLAGS	= -Wall -Werror -Wextra
INCLUDE	= -I include
RM	= rm -f
.c.o:
	${CC} ${INCLUDE} -c $< -o ${<:.c=.o}

$(NAME):	${OBJS}
	ar rc $(NAME) $(OBJS)

all:	${NAME}

clean:
	${RM} ${OBJS}

fclean:	clean
	${RM} ${NAME}

teste:
	${CC} ${INCLUDE} ${NAME} -o teste

re:	fclean all teste

.PHONY:	all clean fclean re




