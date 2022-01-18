extern "C" {
#include <fcntl.h>
#include "get_next_line.h"
}
#include <cstring>
#include <iostream>
#include <list>

class Checker {
	public:
	Checker(int fd, int to):str((char *)1), fd(fd),to(to),test(0){}
	void Check() {
		int len;
		str = get_next_line(fd);
		if (!str)
			return;
		write(to, str, len = strlen(str));
		if (test && str[len - 1] != '\n') {
			std::cout << "[ERROR]\n";
		}
		test = str[len - 1] != '\n';
		free(str);
	}
	bool Done() {
		return !str;
	}
	~Checker() {
		close(fd);
		close(to);
	}
	private:
	char *str;
	int fd;
	int to;
	bool test;
};

int main(int argc, char *argv[]) {
	if (argc < 3) {
		std::cout << "kek\n" <<
		"Need arguments [from_file] [to_file] ...";
		return 0;
	}
	std::list<Checker> list;
	for (int i = 0; i < (argc - 2); i += 2) {
		int fd = open(argv[i + 1], O_RDONLY);
		int to = open(argv[i + 2], O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
		list.emplace_back(fd, to);
	}
	size_t size;
	size_t prev = 0;
	for (;!list.empty();) {
		size = list.size();
		if (size != prev) {
			std::cout << "Current list size: " << size << '\n';
			prev = size;
		}
		for (auto it = list.begin(), end = list.end(); it != end;) {
			it->Check();
			if (it->Done()) {
				it = list.erase(it);
			} else ++it;
		}
	}
	std::cout << '\n';
}

#if 0
int main(int argc, char *argv[]) {
	char const *path = "threeliner.txt";
	if (argc > 1)
		path = argv[1];
	int fd1 = open(path, O_RDONLY);
	int fd2 = open(path, O_RDONLY);
	int fd3 = open(path, O_RDONLY);

	int to1 = open("1.txt", O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
	int to2 = open("2.txt", O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
	int to3 = open("3.txt", O_WRONLY | O_CREAT, S_IRUSR | S_IWUSR);
	std::cout << "fds: " << fd1 << ' ' << fd2 << ' ' << fd3;
	std::cout << "\nfds: " << to1 << ' ' << to2 << ' ' << to3;
	char *str1;
	char *str2;
	char *str3;
	for (	str1 = get_next_line(fd1),
		str2 = get_next_line(fd2),
		str3 = get_next_line(fd3);
		str1 || str2 || str3;
		str1 = get_next_line(fd1),
		str2 = get_next_line(fd2),
		str3 = get_next_line(fd3)
	    )
	{
		write(to1, str1, strlen(str1) - 1);
		write(to1, "\n", 1);

		write(to2, str2, strlen(str2) - 1);
		write(to2, "\n", 1);

		write(to3, str3, strlen(str3) - 1);
		write(to3, "\n", 1);

		free(str1);
		free(str2);
		free(str3);
	}
	close(fd1);
	close(fd2);
	close(fd3);
	close(to1);
	close(to2);
	close(to3);
}
#endif
