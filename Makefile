# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ggiboury <ggiboury@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/28 18:25:28 by ggiboury          #+#    #+#              #
#    Updated: 2025/04/28 18:30:19 by ggiboury         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC		= main.cpp

OBJ		= $(SRC:%.cpp=%.o)

HEADER	= 

CXX	= c++

CXXFLAGS	= -Wall -Wextra -Werror -g3

NAME	= scop

all: $(NAME)

$(NAME): $(OBJ) 
	$(CXX) $(CXXFLAGS) -o $(NAME) $^

%.o: %.c
	$(CXX) $(CXXFLAGS) -I. -c -o $@ $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all