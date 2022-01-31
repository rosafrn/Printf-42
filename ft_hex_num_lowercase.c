/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_hex_num_lowercase.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rosferna <rosferna@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/27 16:44:56 by rosferna          #+#    #+#             */
/*   Updated: 2022/01/31 15:37:41 by rosferna         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

int	ft_hex_num_lowercase(unsigned int n)
{
	static int	counter = 1;
	char *hex;

	hex = "0123456789abcdef";
	if (n >= 16)
	{
		ft_hex_num_lowercase(n / 16);
		counter++;
	}
	n = n % 16;
	write(1, &hex[n], 1);
	return (counter);

}