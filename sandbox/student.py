def get_mean(num_list):
    if not num_list:
        return 0
    return sum(num_list)/len(num_list)


num_lst = [3, 6, 5, 7, 9, 1]
mean = get_mean(num_lst)
print(f'{mean:.2f}')