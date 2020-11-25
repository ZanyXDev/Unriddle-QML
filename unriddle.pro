CONFIG += ordered

TEMPLATE = subdirs

GIT_TIMESTAMP    = $$system($$quote(git --git-dir $$PWD/.git log -n 1 --pretty=format:"%ad" --date=format:\'%d-%m-%Y %H:%M:%S\'))
GIT_VERSION      = $$system($$quote(git --git-dir $$PWD/.git --work-tree $$PWD describe --always --tags))
GIT_COMMIT_COUNT = $$system($$quote(git --git-dir $$PWD/.git rev-list HEAD --count))

QMAKE_SUBSTITUTES += $$PWD/app_version.h.in

SUBDIRS += \
    unriddle \
    tests/t_encrypt \
    tests/t_getquote


