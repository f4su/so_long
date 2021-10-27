/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgainza- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/18 15:17:23 by jgainza-          #+#    #+#             */
/*   Updated: 2021/10/18 15:23:05 by jgainza-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

# include <stddef.h>
# include <stdlib.h>
# include <unistd.h>

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 1
# endif

char	*get_next_line(int fd);
size_t	ft_gnl_strlen(char *s);
int		ft_findc(char *s, int c);
char	*ft_gnl_strjoin(char *s1, char *s2);
char	*ft_line(char *cache);
char	*ft_newcache(char *cache);
char	*ft_gnl_strchr(char *s, int c);
void	test_rd(int rd, char *buff);

#endif
