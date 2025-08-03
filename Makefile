NAME = libft.a
CC = cc
FLAGS = -Wall -Wextra -Werror
HEADER = libft.h
CFILES = ft_atoi.c ft_isalnum.c ft_isdigit.c ft_memchr.c ft_memmove.c ft_putendl_fd.c ft_split.c ft_striteri.c \
ft_strlcpy.c ft_strncmp.c ft_strtrim.c ft_toupper.c ft_bzero.c ft_isalpha.c ft_isprint.c ft_memcmp.c ft_memset.c \
ft_putnbr_fd.c ft_strchr.c ft_strjoin.c ft_strlen.c ft_strnstr.c ft_substr.c ft_calloc.c ft_isascii.c ft_itoa.c \
ft_memcpy.c ft_putchar_fd.c ft_putstr_fd.c ft_strdup.c ft_strlcat.c ft_strmapi.c ft_strrchr.c ft_tolower.c
BFILES = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c \
ft_lstiter.c ft_lstmap.c
BONUS = $(BFILES:.c=.o)
OBJECTS = $(CFILES:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
		ar rcs $(NAME) $(OBJECTS)

%.o: %.c $(HEADER)
		$(CC) $(FLAGS) -c $< -o $@

bonus: $(OBJECTS) $(BONUS)
		ar rcs $(NAME) $(OBJECTS) $(BONUS)	

clean:
		rm -f $(OBJECTS) $(BONUS)

fclean: clean
		rm -f $(NAME) 

re: fclean all

.PHONY: all clean fclean re bonus