# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ggiboury <ggiboury@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/28 18:25:28 by ggiboury          #+#    #+#              #
#    Updated: 2025/05/05 10:29:30 by ggiboury         ###   ########.fr        #
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

# CXXFLAGS	= -Wall -Wextra -Werror -g3 $(LIB)
CXXFLAGS	= $(LIB)

NAME	= scop

all: $(NAME)

$(NAME): $(OBJ) 
#	$(CXX) -o $(NAME) -I.$(HEADER) $(CXXFLAGS) 
	$(CXX) -o $(NAME) -I.$(HEADER) $(GLFW_LIB)src/libglfw3.a

%.o: %.c
	$(CXX) -o $@ -c $< -I.$(HEADER) $(CXXFLAGS) 

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

#-I path/to/glfw/include path/to/glfw/lib-mingw-w64/libglfw3.a -lgdi32