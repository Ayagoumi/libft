/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ayagoumi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/21 18:02:09 by ayagoumi          #+#    #+#             */
/*   Updated: 2019/04/23 07:17:20 by ayagoumi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*del(t_list *lst)
{
	t_list	*d;

	d = ft_lstnew(ft_strjoin(lst->content, "iek"), (lst->content_size) + 3);
	//	ft_memdel(&d);
	//	i = 0;
	return (d);
}

/*void	iter(t_list	*lst)
{
	while (lst)
	{
		lst->content = "F";
		lst->content_size = 1;
		lst = lst->next;
	}
}*/



int		main()
{
	t_list *lst;
	t_list	*new;

	new = ft_lstnew("000", 3);
	lst = ft_lstnew("12345", 10);
	lst->next = ft_lstnew("qwerty", 6);
	lst->next->next = ft_lstnew("+**", 3);


	//ft_lstiter(lst,iter); 
	//new = ft_lstmap(lst, del);
	ft_lstadd(&lst, new);
	while (lst)
	{
		ft_putendl(lst->content);
		lst = lst->next;
	}

	/*while (new)
	{
		ft_putendl(new->content);
		new = new->next;
	}*/

	return (0);
}
