/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jzoltan <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/12 04:16:04 by jzoltan           #+#    #+#             */
/*   Updated: 2022/01/18 03:21:29 by jzoltan          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

# include <unistd.h>

struct						s_ft_string
{
	char		**strs;
	size_t		strs_count;
	size_t		app_size;
	size_t		str_id;
	size_t		c_id;
};

typedef struct s_ft_string		*t_ft_string;

struct s_list
{
	struct s_list	*root;
	struct s_list	*next;
	int				fd;
	int				b_index;
	int				b_end;
	t_ft_string		string;
	char			buffer[BUFFER_SIZE];
};

typedef struct s_list			*t_list;

struct s_ft_string	*ft_string_init(size_t app_size);
void				ft_string_free(struct s_ft_string *string);
int					ft_string_app_char(struct s_ft_string *string, char ch);
char				*ft_string_to_chars(struct s_ft_string *string);
char				*get_next_line(int fd);

#endif
