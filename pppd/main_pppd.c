extern int main_pppd(int, char **);

int
main(argc, argv)
    int argc;
    char *argv[];
{
	int ret;

	ret = main_pppd(argc, argv);
	return ret;

}
