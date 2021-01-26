CXX = g++
CXXFLAGS = -Wall

proj3: treap.o driver.cpp
	$(CXX) $(CXXFLAGS) treap.o driver.cpp -o proj3

proj3test0: treap.o test0.cpp
	$(CXX) $(CXXFLAGS) treap.o test0.cpp -o proj3test0

proj3test1: treap.o test1.cpp
	$(CXX) $(CXXFLAGS) treap.o test1.cpp -o proj3test1

proj3test2: treap.o test2.cpp
	$(CXX) $(CXXFLAGS) treap.o test2.cpp -o proj3test2

proj3test3: treap.o test3.cpp
	$(CXX) $(CXXFLAGS) treap.o test3.cpp -o proj3test3

proj3test4: treap.o test4.cpp
	$(CXX) $(CXXFLAGS) treap.o test4.cpp -o proj3test4
treap.o: treap.cpp treap.h
	$(CXX) $(CXXFLAGS) -c treap.cpp


clean:
	rm *.o*
	rm *~

run:
	./proj3

valrun:
	valgrind ./proj3

test0:
	./proj3test0

valtest0:
	valgrind ./proj3test0

test1:
	./proj3test1

valtest1:
	valgrind ./proj3test1

test2:
	./proj3test2

valtest2:
	valgrind ./proj3test2

test3:
	./proj3test3

valtest3:
	valgrind ./proj3test3

test4:
	./proj3test4

valtest4:
	valgrind ./proj3test4
