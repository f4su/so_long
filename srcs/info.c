/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   info.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgainza- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/17 20:13:16 by jgainza-          #+#    #+#             */
/*   Updated: 2021/10/19 13:22:04 by jgainza-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/so_long.h"
#include "../get_next_line/get_next_line.h"

size_t	ft_strlen(const	char *s)
{
	size_t	c;

	c = 0;
	while (s[c] != '\0')
		c++;
	return (c);
}

int	ft_map_width(char	*file)
{
	char	*line;
	int		init;
	int		x;
	int		fd;

	line = NULL;
	fd = open(file, O_RDONLY);
	if (!fd || fd == -1)
		ft_error_cant_open();
	line = get_next_line(fd);
	if (!line)
		ft_error_empty();
	init = ft_strlen(line) - 1;
	while (line != NULL)
	{
		x = ft_strlen(line);
		if (line[x - 1] == '\n')
			x--;
		if (x != init)
			ft_error_not_rectangular();
		line = get_next_line(fd);
	}
	if (init * 50 > 1920)
		ft_error_too_big();
	return (init);
}

int	ft_map_height(char	*file)
{
	char	*line;
	int		y;
	int		fd;

	y = 0;
	fd = open(file, O_RDONLY);
	if (!fd || fd == -1)
		ft_error_cant_open();
	line = get_next_line(fd);
	if (!line)
		ft_error_empty();
	while (line != NULL)
	{
		line = get_next_line(fd);
		y++;
	}
	if (y * 50 > 1080)
		ft_error_too_big();
	return (y);
}

char	**ft_map_fill(t_map	map, char	*file)
{
	char	*line;
	int		fd;

	fd = open(file, O_RDONLY);
	map.y = 0;
	while (map.map_height > map.y)
	{
		line = get_next_line(fd);
		map.x = -1;
		while (map.map_width > map.x++)
			map.done[map.y][map.x] = line[map.x];
		map.done[map.y][map.x] = '\0';
		map.y++;
	}
	map.done[map.y] = NULL;
	close (fd);
	return (map.done);
}

t_map	ft_map_info(t_map	map, char	*file)
{
	map.x = -1;
	map.map_width = ft_map_width(file);
	map.map_height = ft_map_height(file);
	map.done = (char **)malloc(sizeof(char *) * (map.map_height + 1));
	if (!map.done)
		ft_error_invalid(map);
	while (map.map_height > map.x++)
		map.done[map.x] = (char *)malloc(sizeof(char) * (map.map_width + 1));
	if (!map.done)
		ft_error_invalid(map);
	map.done = ft_map_fill(map, file);
	if (!map.done)
		ft_error_invalid(map);
	return (map);
}
