$header

#include "hbclass.ch"

CLASS QLoggingCategory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isEnabled
   METHOD setEnabled
   METHOD isDebugEnabled
   METHOD isWarningEnabled
   METHOD isCriticalEnabled
   METHOD categoryName
   METHOD defaultCategory
   METHOD setFilterRules

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QLoggingCategory(const char *category)
$constructor=|new|const char *

$deleteMethod

$prototype=bool isEnabled(QtMsgType type) const
$method=|bool|isEnabled|QtMsgType

$prototype=void setEnabled(QtMsgType type, bool enable)
$method=|void|setEnabled|QtMsgType,bool

$prototype=bool isDebugEnabled() const
$method=|bool|isDebugEnabled|

$prototype=bool isWarningEnabled() const
$method=|bool|isWarningEnabled|

$prototype=bool isCriticalEnabled() const
$method=|bool|isCriticalEnabled|

$prototype=const char *categoryName() const
$method=|const char *|categoryName|

$prototype=static QLoggingCategory *defaultCategory()
$staticMethod=|QLoggingCategory *|defaultCategory|

$prototype=static void setFilterRules(const QString &rules)
$staticMethod=|void|setFilterRules|const QString &

$extraMethods

#pragma ENDDUMP
