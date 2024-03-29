# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rosferna <rosferna@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/28 17:52:02 by rosferna          #+#    #+#              #
#    Updated: 2022/01/31 20:31:26 by rosferna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_printf.c\
		ft_specifiers.c\
		ft_char.c\
		ft_string.c\
		ft_decimal_integer.c\
		ft_unsigned_decimal.c\
		ft_string.c\
		ft_hex_num_lowercase.c\
		ft_hex_num_uppercase.c\
		ft_pointer.c\
		ft_strchr.c

OBJS = $(SRCS:.c=.o)
INCS = ft_printf.h
NAME = libftprintf.a

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

.c.o:
	gcc -Wall -Wextra -Werror -I $(INCS) -c $< -o $(<:c=o) 

clean:
	rm -rf $(OBJS) $(OBJS_B)

fclean: clean
	rm -rf $(NAME)

re: fclean all




		