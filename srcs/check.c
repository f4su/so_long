/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   check.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgainza- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/18 16:10:04 by jgainza-          #+#    #+#             */
/*   Updated: 2021/10/19 13:29:15 by jgainza-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/so_long.h"

void	ft_pj_check(t_map map)
{
	t_img	img;
	int		pj;

	pj = 0;
	img.y = 0;
	while (img.y < map.map_height)
	{
		img.x = 0;
		while (img.x < map.map_width)
		{
			if (map.done[img.y][img.x] == 'P')
				pj++;
			img.x++;
		}
		img.y++;
	}
	if (pj != 1)
		ft_error_invalid(map);
}

void	ft_wall_check(t_map map)
{
	t_img	img;

	img.y = 0;
	while (img.y < map.map_height)
	{
		img.x = 0;
		while (img.x < map.map_width)
		{
			if (map.done[0][img.x] != '1' || map.done[img.y][0] != '1' ||
					map.done[map.map_height - 1][img.x] != '1' ||
					map.done[img.y][map.map_width - 1] != '1')
				ft_error_invalid(map);
			img.x++;
		}
		img.y++;
	}
}

void	ft_obj_exit_check(t_map map)
{
	t_img	img;
	int		exit;
	int		obj;

	obj = 0;
	exit = 0;
	img.y = 0;
	while (img.y < map.map_height)
	{
		img.x = -1;
		while (img.x++ < map.map_width)
		{
			if (map.done[img.y][img.x] == 'E')
				exit++;
			if (map.done[img.y][img.x] == 'C')
				obj++;
		}
		img.y++;
	}
	if (exit < 1)
		ft_error_invalid(map);
	if (obj < 1)
		ft_error_invalid(map);
}

void	ft_char_check(t_map map)
{
	t_img	img;
	int		pj;

	pj = 0;
	img.y = 0;
	while (img.y < map.map_height)
	{
		img.x = 0;
		while (img.x < map.map_width)
		{
			if (map.done[img.y][img.x] != 'P' &&
					map.done[img.y][img.x] != 'E' &&
					map.done[img.y][img.x] != 'C' &&
					map.done[img.y][img.x] != '1' &&
					map.done[img.y][img.x] != '0')
				ft_error_invalid(map);
			img.x++;
		}
		img.y++;
	}
}

void	ft_map_check(t_map	map)
{
	ft_pj_check(map);
	ft_obj_exit_check(map);
	ft_char_check(map);
	ft_wall_check(map);
}
