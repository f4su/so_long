/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgainza- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/15 15:25:47 by jgainza-          #+#    #+#             */
/*   Updated: 2021/10/27 13:35:39 by jgainza-         ###   ########.fr       */
/*                                                                           */
/* ************************************************************************** */

#include "../includes/so_long.h"

t_map	ft_map_init(void)
{
	t_map	map;

	map.mlx = mlx_init();
	map.moves = 0;
	map.map_width = 0;
	map.map_height = 0;
	return (map);
}

t_img	ft_img_init(void)
{
	t_img	img;

	img.wall = "sprites/wall.xpm";
	img.exit = "sprites/exit.xpm";
	img.floor = "sprites/floor.xpm";
	img.pj = "sprites/pj.xpm";
	img.obj = "sprites/obj.xpm";
	img.img_width = 64;
	img.img_height = 64;
	return (img);
}

t_map	ft_map_draw(t_map map)
{
	ft_floor_draw(map);
	ft_wall_draw(map);
	ft_exit_draw(map);
	map = ft_pj_draw(map);
	map.obj = ft_obj_draw(map);
	return (map);
}

int	main(int argc, char **argv)
{
	t_map	map;

	if (argc == 2)
	{
		map = ft_map_init();
		map = ft_map_info(map, argv[1]);
		ft_map_check(map);
		map.win = mlx_new_window(map.mlx, map.map_width * 64,
				map.map_height * 64, "inshallah  ehehehehe siiuuu");
		map = ft_map_draw(map);
		mlx_hook(map.win, 2, 1L << 0, ft_game_close, &map);
		mlx_hook(map.win, 17, 1L << 17, ft_game_close_2, &map);
		mlx_key_hook(map.win, ft_movement, &map);
		mlx_loop(map.mlx);
	}
	if (argc < 2)
		write(1, "ERROR: there is no map\n", 23);
	else
		write(1, "ERROR: there is no proper map\n", 30);
}
