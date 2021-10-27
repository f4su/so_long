/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   errors.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jgainza- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/04 15:40:55 by jgainza-          #+#    #+#             */
/*   Updated: 2021/10/19 09:50:16 by jgainza-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/so_long.h"

void	ft_error_too_big(void)
{
	write(1, "ERROR: the map is too big\n", 26);
	exit (1);
}

void	ft_error_empty(void)
{
	write(1, "ERROR: the map is empty\n", 24);
	exit (1);
}

void	ft_error_cant_open(void)
{
	write(1, "ERROR: the map can't be opened\n", 31);
	exit (1);
}

void	ft_error_not_rectangular(void)
{
	write(1, "ERROR: the map is not rectangular\n", 34);
	exit (1);
}

void	ft_error_invalid(t_map map)
{
	write(1, "ERROR: the map is not valid\n", 28);
	free(map.done);
	exit (1);
}
