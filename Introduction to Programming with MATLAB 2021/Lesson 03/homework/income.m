function i = income(rate, price)
	incomePerHour = rate * price';
	i = incomePerHour * 2 * 8 * 6;