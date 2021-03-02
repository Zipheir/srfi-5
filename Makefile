CSC			:= csc
CHICKEN_CLEAN		:= chicken-clean
CHICKEN_INSTALL		:= chicken-install
SALMONELLA		:= salmonella
SALMONELLA_LOG		:= salmonella.log
SALMONELLA_LOG_VIEWER	:= salmonella-log-viewer
SRFI   			:= srfi-5.scm
TEST_NEW_EGG		:= test-new-egg

all: compile

clean:
	$(CHICKEN_CLEAN)
	rm -f $(SALMONELLA_LOG)

compile:
	$(CSC) $(SRFI)

salmonella:
	$(SALMONELLA)

test_new_egg:
	$(TEST_NEW_EGG)

view:
	$(SALMONELLA_LOG_VIEWER) $(SALMONELLA_LOG)
