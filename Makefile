# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ayagoumi <ayagoumi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/01 06:06:14 by mzaboub           #+#    #+#              #
#    Updated: 2019/11/18 01:19:47 by ayagoumi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libft.a

SRC_PATH= .
SRC_NAME= ft_atoi.c  	ft_bzero.c		ft_charinword.c	ft_isalnum.c	\
		  ft_isalpha.c	ft_isascii.c	ft_isdigit.c	ft_isprime.c 	\
		  ft_isprint.c 	ft_itoa.c 		ft_lstadd.c  	ft_lstdel.c		\
		  ft_lstiter.c	ft_lstmap.c		ft_lstnew.c		ft_lstsize.c 	\
		  ft_lstsplit.c	ft_memalloc.c	ft_memccpy.c	ft_memchr.c 	\
		  ft_memcmp.c	ft_memcpy.c		ft_memcpynull.c	ft_memdel.c 	\
		  ft_memmove.c	ft_memset.c		ft_putchar.c	ft_putchar_fd.c \
		  ft_putendl.c	ft_putendl_fd.c	ft_putnbr.c		ft_putnbr_fd.c	\
		  ft_putstr.c	ft_putstr_fd.c	ft_sqrt.c		ft_strcat.c		\
		  ft_strchr.c	ft_strclr.c		ft_strcmp.c		ft_strcpy.c		\
		  ft_strdel.c	ft_strdup.c		ft_strequ.c		ft_striter.c	\
		  ft_striteri.c	ft_strjoin.c	ft_strlcat.c	ft_strlen.c		\
		  ft_strmap.c	ft_strmapi.c	ft_strncat.c	ft_strncmp.c 	\
		  ft_strncpy.c	ft_strnequ.c	ft_strnew.c		ft_strnstr.c 	\
		  ft_strrchr.c	ft_strrev.c		ft_strsplit.c	ft_strstr.c 	\
		  ft_strsub.c	ft_strtrim.c	ft_tolower.c	ft_toupper.c 	\
		  get_next_line.c	ft_lstdelone.c	ft_atoi_base.c ft_split_whitespaces.c \
		  upper_case.c
SRC= $(addprefix $(SRC_PATH)/, $(SRC_NAME))


OBJ_PATH= obj
OBJ_NAME= $(SRC_NAME:.c=.o)
OBJ= $(addprefix $(OBJ_PATH)/, $(OBJ_NAME))


CFLAGS=  -Wall -Wextra -Werror
CC= gcc
HDR_FLAGS= -I.


all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "libft: library compilled"

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	@$(CC) $(CFLAGS) $(HDR_FLAGS) -o $@ -c $<


clean:
	@rm -fr $(OBJ)
	@rmdir $(OBJ_PATH) 2> /dev/null || true
	@echo "libft: object files deleted"

fclean: clean
	@rm -f $(NAME)
	@echo "libft: library deleted"

re: fclean all
	
