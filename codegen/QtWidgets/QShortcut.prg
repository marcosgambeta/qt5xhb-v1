$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QKEYSEQUENCE
REQUEST QWIDGET
#endif

CLASS QShortcut INHERIT QObject

   METHOD new
   METHOD delete
   METHOD autoRepeat
   METHOD context
   METHOD id
   METHOD isEnabled
   METHOD key
   METHOD parentWidget
   METHOD setAutoRepeat
   METHOD setContext
   METHOD setEnabled
   METHOD setKey
   METHOD setWhatsThis
   METHOD whatsThis

   METHOD onActivated
   METHOD onActivatedAmbiguously

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QShortcut(QWidget * parent)
*/
$internalConstructor=|new1|QWidget *

/*
QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)
*/
$internalConstructor=|new2|const QKeySequence &,QWidget *,const char *=0,const char *=0,Qt::ShortcutContext=Qt::WindowShortcut

//[1]QShortcut(QWidget * parent)
//[2]QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)

HB_FUNC_STATIC( QSHORTCUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QShortcut_new1();
  }
  else if( ISBETWEEN(2,5) && ISQKEYSEQUENCE(1) && ISQWIDGET(2) && ISOPTCHAR(3) && ISOPTCHAR(4) && ISOPTNUM(5) )
  {
    QShortcut_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool autoRepeat() const
*/
$method=|bool|autoRepeat|

/*
Qt::ShortcutContext context() const
*/
$method=|Qt::ShortcutContext|context|

/*
int id() const
*/
$method=|int|id|

/*
bool isEnabled() const
*/
$method=|bool|isEnabled|

/*
QKeySequence key() const
*/
$method=|QKeySequence|key|

/*
QWidget * parentWidget() const
*/
$method=|QWidget *|parentWidget|

/*
void setAutoRepeat(bool on)
*/
$method=|void|setAutoRepeat|bool

/*
void setContext(Qt::ShortcutContext context)
*/
$method=|void|setContext|Qt::ShortcutContext

/*
void setEnabled(bool enable)
*/
$method=|void|setEnabled|bool

/*
void setKey(const QKeySequence & key)
*/
$method=|void|setKey|const QKeySequence &

/*
void setWhatsThis(const QString & text)
*/
$method=|void|setWhatsThis|const QString &

/*
QString whatsThis() const
*/
$method=|QString|whatsThis|

#pragma ENDDUMP
