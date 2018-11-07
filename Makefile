# talks
### Hooks for the editor to set the default target

current: target
-include target.mk

Sources += Makefile README.md

######################################################################

msrepo = https://github.com/dushoff
ms = makestuff
Ignore += $(ms)
Makefile: $(ms) $(ms)/Makefile
$(ms):
	git clone $(msrepo)/$(ms)

-include $(ms)/os.mk
# -include $(ms)/perl.def

######################################################################

######################################################################

linkdirs += disease_model_talks Generation_talks statistics_talks

Ignore += $(linkdirs)
$(linkdirs): %: ../%
	$(LN) $< .

../%:
	$(makethere)

alldirs += $(linkdirs)

screen_session: disease_model_talks.screen Generation_talks.screen statistics_talks.screen

%.screen: %
	cd $< && screen -t "$<"


######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk

