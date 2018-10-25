# talks
### Hooks for the editor to set the default target

current: target
-include target.mk

Sources += Makefile README.md

######################################################################

-include $(ms)/os.mk
# -include $(ms)/perl.def
-include $(ms)/repos/dushoff_repos.def

msrepo = https://github.com/dushoff
ms = makestuff
Ignore += $(ms)
Makefile: $(ms) $(ms)/Makefile
$(ms):
	git clone $(msrepo)/$(ms)

######################################################################

## <C-F5>clonedirs += disease_model_talks

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/repos/dushoff_repos.mk

# -include $(ms)/wrapR.mk

