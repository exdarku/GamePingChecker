/*
Hello! Thanks for reading the source code

I re-written the code in C++, as I'm also learning C++, and programming this practices me.
If you have any suggestion, just leave an issue form. Or you can also contact me.

-Perseus
*/
#include <iostream>
#include <string>
#pragma warning;

const double version = 1.5;

void csgo_ping_check();
void valorant_ping_check();
void web_ping_check();
void csgo_fast_ping_check();
void csgo_slow_ping_check();
void csgo_veryslow_ping_check();
void about();


int main() {
	system("title PingChecker ^| perseus");
	system("color 09");
	system("cls");
	std::cout << "==============================================" << std::endl;
	std::cout << "PingChecker\n";
	std::cout << "==============================================" << std::endl;
	std::cout << "Version " << version << "\n";
	std::cout << "\n";
	std::cout << "Developed by perseus\n";
	std::cout << "Steam Link:\n";
	std::cout << "https://steamcommunity.com/id/ex-dar-ku/ \n";
	std::cout << "==============================================" << std::endl;
	std::cout << "\n";
	std::cout << "0.) About this Project\n";
	std::cout << "1.) CSGO\n";
	std::cout << "2.) Web \n";
	std::cout << "3.) Valorant\n";
	int choice;
	std::cout << "\n";
	std::cout << ">";
	std::cin >> choice;
	if (choice == 1) {
		csgo_ping_check();
	}
	else if (choice == 2) {
		web_ping_check();
	}
	else if (choice == 3) {
		valorant_ping_check();
	}
	else if (choice == 0) {
		about();
	}
	else {
		main();
	}
}

void valorant_ping_check() {
	system("cls");
	int p;
	system("ping 104.18.7.209");
	std::cout << "\n";
	std::cout << "Press any key to start the ping test again.\n";
	system("pause >nul");
	main();
}

void web_ping_check() {
	system("cls");
	int p;
	system("ping 1.1.1.1");
	std::cout << "\n";
	std::cout << "Press any key to start the ping test again.\n";
	system("pause >nul");
	main();
}

void csgo_fast_ping_check() {
	system("cls");
	int p;
	system("ping 139.99.124.33");
	std::cout << "\n";
	std::cout << "Press any key to start the ping test again.\n";
	system("pause >nul");
	main();
}

void csgo_slow_ping_check() {
	system("cls");
	int p;
	system("ping 139.99.124.33 -n 30");
	std::cout << "\n";
	std::cout << "Press any key to start the ping test again.\n";
	system("pause >nul");
	main();
}

void csgo_veryslow_ping_check() {
	system("cls");
	int p;
	system("ping 139.99.124.33 -n 100");
	std::cout << "\n";
	std::cout << "Press any key to start the ping test again.\n";
	system("pause >nul");
	main();
}

void csgo_ping_check() {
	system("cls");
	std::cout << "==============================================" << std::endl;
	std::cout << "PingChecker\n";
	std::cout << "==============================================" << std::endl;
	std::cout << "Ping Duration\n";
	std::cout << "1.) Fast Ping Check (Less Accurate)\n";
	std::cout << "2.) Slow Ping Check (More Accurate)\n";
	std::cout << "3.) Very Slow Ping Check (Most Accurate)\n";
	int choice;
	std::cout << ">";
	std::cin >> choice;
	if (choice == 1) {
		csgo_fast_ping_check();
	}
	else if (choice == 2) {
		csgo_slow_ping_check();
	}
	else if (choice == 3) {
		csgo_veryslow_ping_check();
	}
	else {
		csgo_ping_check();
	}

}

void about() {
	using namespace std;
	system("cls");
	cout << "==============================================" << endl;
	cout << "PingChecker\n";
	cout << "==============================================" << endl;
	cout << "Developed by Perseus\n";
	cout << "Open for public use.";
	system("pause >nul");
	main();
	
}
