/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   movements.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgainza- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/18 17:08:15 by jgainza-          #+#    #+#             */
/*   Updated: 2021/10/20 13:44:30 by jgainza-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/so_long.h"

void	ft_pj_movement(t_map *map)
{
	if (map->done[map->y][map->x] == 'E')
	{
		if (map->obj == 0)
		{
			mlx_destroy_window(map->mlx, map->win);
			printf("Moves = %d\n", ++map->moves);
			exit (1);
		}
	}
	if (map->done[map->y][map->x] == 'C')
		--map->obj;
	if (map->done[map->y][map->x] != '1' &&
		map->done[map->y][map->x] != 'E')
	{
		printf("Moves = %d\n", ++map->moves);
		map->done[map->y][map->x] = 'P';
		map->done[map->pix_y][map->pix_x] = '0';
		ft_map_draw(*map);
	}
	else
	{
		map->x = map->pix_x;
		map->y = map->pix_y;
	}
}

int	ft_movement(int keycode, t_map *map)
{
	map->pix_x = map->x;
	map->pix_y = map->y;
	if (keycode == 13)
		--map->y;
	else if (keycode == 1)
		++map->y;
	else if (keycode == 0)
		--map->x;
	else if (keycode == 2)
		++map->x;
	if (keycode == 13 || keycode == 1 || keycode == 0 || keycode == 2)
		ft_pj_movement(map);
	return (0);
}
