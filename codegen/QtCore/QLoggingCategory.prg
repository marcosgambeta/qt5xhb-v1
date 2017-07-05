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

/*
QLoggingCategory(const char *category)
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QLoggingCategory * o = new QLoggingCategory ( PCONSTCHAR(1) );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isEnabled(QtMsgType type) const
*/
$method=|bool|isEnabled|QtMsgType

/*
void setEnabled(QtMsgType type, bool enable)
*/
$method=|void|setEnabled|QtMsgType,bool

/*
bool isDebugEnabled() const
*/
$method=|bool|isDebugEnabled|

/*
bool isWarningEnabled() const
*/
$method=|bool|isWarningEnabled|

/*
bool isCriticalEnabled() const
*/
$method=|bool|isCriticalEnabled|

/*
const char *categoryName() const
*/
$method=|const char *|categoryName|

/*
static QLoggingCategory *defaultCategory()
*/
HB_FUNC_STATIC( QLOGGINGCATEGORY_DEFAULTCATEGORY )
{
  QLoggingCategory * ptr = QLoggingCategory::defaultCategory ();
  _qt5xhb_createReturnClass ( ptr, "QLOGGINGCATEGORY" );
}

/*
static void setFilterRules(const QString &rules)
*/
$staticMethod=|void|setFilterRules|const QString &

$extraMethods

#pragma ENDDUMP
