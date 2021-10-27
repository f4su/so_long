/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   so_long.h                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgainza- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/09/28 16:05:02 by jgainza-          #+#    #+#             */
/*   Updated: 2021/10/27 13:35:48 by jgainza-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef SO_LONG_H
# define SO_LONG_H

# include "../mlx/mlx.h"
# include <unistd.h>
# include <stdio.h>
# include <stdlib.h>
# include <fcntl.h>

typedef struct s_img
{
	void	*img;
	char	*img_addr;
	char	*floor;
	char	*wall;
	char	*pj;
	char	*exit;
	char	*obj;
	int		b_pix;
	int		line_len;
	int		endian;
	int		x;
	int		y;
	int		img_width;
	int		img_height;
}			t_img;

typedef struct s_map
{
	void	*mlx;
	void	*win;
	char	**done;
	int		moves;
	int		obj;
	int		x;
	int		y;
	int		pix_x;
	int		pix_y;
	int		map_width;
	int		map_height;
}			t_map;

void	ft_error_too_big(void);
void	ft_error_empty(void);
void	ft_error_cant_open(void);
void	ft_error_not_rectangular(void);
void	ft_error_invalid(t_map map);

t_map	ft_map_init(void);
t_img	ft_img_init(void);
t_map	ft_map_draw(t_map map);
int		main(int argc, char **argv);

void	ft_floor_draw(t_map map);
void	ft_wall_draw(t_map map);
void	ft_exit_draw(t_map map);
int		ft_obj_draw(t_map map);
t_map	ft_pj_draw(t_map map);

size_t	ft_strlen(const	char *s);
int		ft_map_width(char *file);
int		ft_map_height(char *file);
char	**ft_map_fill(t_map map, char *file);
t_map	ft_map_info(t_map map, char *file);

void	ft_pj_check(t_map map);
void	ft_wall_check(t_map map);
void	ft_obj_exit_check(t_map map);
void	ft_char_check(t_map map);
void	ft_map_check(t_map map);

int		ft_game_close(int keycode, t_map *map);
int		ft_game_close_2(t_map *map);

void	ft_pj_movement(t_map *map);
int		ft_movement(int keycode, t_map *map);

#endif
