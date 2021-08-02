NAME = main.exe

CC = g++

FLAGS = -Wall -Werror -Wextra -g

HEADERS = header.hpp

HEADER_DIR = includes

S_DIR = src

O_DIR = obj

SRCS = exten.cpp main.cpp

OBJECTS = $(addprefix $(O_DIR)/,$(SRCS:.cpp=.o))

all: $(NAME)

$(NAME): $(OBJECTS) $(HEADER_DIR)/$(HEADERS)
	$(CC) -o $(NAME) $(OBJECTS) -I$(HEADER_DIR)

$(O_DIR)/%.o: $(S_DIR)/%.cpp
	if not exist $(O_DIR) mkdir $(O_DIR)  
	$(CC) $(FLAGS) -I$(HEADER_DIR) -o $@ -c $<

clean:
	if exist $(O_DIR) rd /s /q $(O_DIR)

fclean: clean
	if exist $(NAME) del -f $(NAME)

re: fclean all

.PHONY: all clean fclean