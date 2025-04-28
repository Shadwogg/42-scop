# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ggiboury <ggiboury@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/28 18:25:28 by ggiboury          #+#    #+#              #
#    Updated: 2025/04/29 00:07:23 by ggiboury         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC		= main.cpp

OBJ		= $(SRC:%.cpp=%.o)

# /home/ggiboury/.local/share/glfw-3.4/include/GLFW
GLFW_HEADER	= /home/ggiboury/.local/share/glfw-3.4/include
GLFW_LIB	= /home/ggiboury/.local/bin/glfw/


HEADER	= $(GLFW_HEADER)

LIB	= -L $(GLFW_LIB) 

CXX	= c++

CXXFLAGS	= -Wall -Wextra -Werror -g3 $(LIB)

NAME	= scop

all: $(NAME)

$(NAME): $(OBJ) 
	$(CXX) -I.$(HEADER) $(CXXFLAGS) /home/ggiboury/.local/bin/glfw/libglfw3.a -o $(NAME) $^

%.o: %.c
	$(CXX) -I.$(HEADER) $(CXXFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all