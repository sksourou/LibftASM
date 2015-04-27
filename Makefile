#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sksourou <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/26 20:29:15 by sksourou          #+#    #+#              #
#    Updated: 2015/04/26 20:31:14 by sksourou         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libfts.a
NASM = ~/.brew/Cellar/nasm/2.11.08/bin/nasm -f macho64
SRC = ft_isdigit.s
OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rc $(NAME) $(OBJ)
	@echo "\n\t \033[32m[All Fine's]\033[0m\n"
	@echo "\033[33mlibfts.a has been created !\033[0m"
%.o: %.s
	@ $(NASM) -o $@ $^

clean:
	@echo "\nRM *.o.. \t      \033[32mZlatan est fort en code!\033[0m"
	@rm -rf $(OBJ)

fclean: clean
	@echo "RM libfts.a..\t      \033[32mZlatan est tres fort en code!\033[0m"
	@rm -rf $(NAME)

re: fclean all

exec:
	@gcc main.c libfts.a
	@./a.out
