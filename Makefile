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

linkdirs += disease_model_talks
$(linkdirs): %: ../%
	$(LN) $< .

alldirs += $(linkdirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk

# -include $(ms)/wrapR.mk

