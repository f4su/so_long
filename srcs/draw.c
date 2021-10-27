/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgainza- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/17 18:38:17 by jgainza-          #+#    #+#             */
/*   Updated: 2021/10/20 13:44:33 by jgainza-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/so_long.h"

void	ft_floor_draw(t_map	map)
{
	t_img	img;

	img = ft_img_init();
	img.img = mlx_xpm_file_to_image(map.mlx, img.floor, &img.img_width,
			&img.img_height);
	img.img_addr = mlx_get_data_addr(img.img, &img.b_pix, &img.line_len,
			&img.endian);
	img.y = 0;
	while (img.y < map.map_height)
	{
		img.x = -1;
		while (img.x++ < map.map_width)
			mlx_put_image_to_window(map.mlx, map.win, img.img, img.x * 64,
				img.y * 64);
		img.y++;
	}
}

void	ft_wall_draw(t_map	map)
{
	t_img	img;

	img = ft_img_init();
	img.img = mlx_xpm_file_to_image(map.mlx, img.wall, &img.img_width,
			&img.img_height);
	img.img_addr = mlx_get_data_addr(img.img, &img.b_pix, &img.line_len,
			&img.endian);
	img.y = 0;
	while (img.y < map.map_height)
	{
		img.x = -1;
		while (img.x++ < map.map_width)
		{
			if (map.done[img.y][img.x] == '1')
				mlx_put_image_to_window(map.mlx, map.win, img.img, img.x * 64,
					img.y * 64);
		}
		img.y++;
	}
}

t_map	ft_pj_draw(t_map	map)
{
	t_img	img;

	img = ft_img_init();
	img.img = mlx_xpm_file_to_image(map.mlx, img.pj, &img.img_width,
			&img.img_height);
	img.img_addr = mlx_get_data_addr(img.img, &img.b_pix, &img.line_len,
			&img.endian);
	img.y = 0;
	while (img.y < map.map_height)
	{
		img.x = -1;
		while (img.x++ < map.map_width)
		{
			if (map.done[img.y][img.x] == 'P')
			{
				mlx_put_image_to_window(map.mlx, map.win, img.img, img.x * 64,
					img.y * 64);
				map.x = img.x;
				map.y = img.y;
			}
		}
		img.y++;
	}
	return (map);
}

int	ft_obj_draw(t_map	map)
{
	t_img	img;

	map.obj = 0;
	img = ft_img_init();
	img.img = mlx_xpm_file_to_image(map.mlx, img.obj, &img.img_width,
			&img.img_height);
	img.img_addr = mlx_get_data_addr(img.img, &img.b_pix, &img.line_len,
			&img.endian);
	img.y = 0;
	while (img.y < map.map_height)
	{
		img.x = -1;
		while (img.x++ < map.map_width)
		{
			if (map.done[img.y][img.x] == 'C')
			{
				mlx_put_image_to_window(map.mlx, map.win, img.img, img.x * 64,
					img.y * 64);
				map.obj++;
			}
		}
		img.y++;
	}
	return (map.obj);
}

void	ft_exit_draw(t_map	map)
{
	t_img	img;

	img = ft_img_init();
	img.img = mlx_xpm_file_to_image(map.mlx, img.exit, &img.img_width,
			&img.img_height);
	img.img_addr = mlx_get_data_addr(img.img, &img.b_pix, &img.line_len,
			&img.endian);
	img.y = 0;
	while (img.y < map.map_height)
	{
		img.x = -1;
		while (img.x++ < map.map_width)
			if (map.done[img.y][img.x] == 'E')
				mlx_put_image_to_window(map.mlx, map.win,
					img.img, img.x * 64, img.y * 64);
		img.y++;
	}
}
