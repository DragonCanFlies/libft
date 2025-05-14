/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: latabagl <latabagl@student.42berlin.de>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/14 16:59:02 by latabagl          #+#    #+#             */
/*   Updated: 2025/05/14 17:13:16 by latabagl         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stddef.h>

char	*ft_strchr(const char *s, int c)
{
	while (*s)
	{
		if ((unsigned char) c == *s)
			return ((char *) s);
		s++;
	}
	if ((unsigned char) c == *s)
		return ((char *) s);
	return (NULL);
}
