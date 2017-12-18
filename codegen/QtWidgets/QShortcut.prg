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

$prototype=QShortcut(QWidget * parent)
$internalConstructor=|new1|QWidget *

$prototype=QShortcut(const QKeySequence & key, QWidget * parent, const char * member = 0, const char * ambiguousMember = 0, Qt::ShortcutContext context = Qt::WindowShortcut)
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

$prototype=bool autoRepeat() const
$method=|bool|autoRepeat|

$prototype=Qt::ShortcutContext context() const
$method=|Qt::ShortcutContext|context|

$prototype=int id() const
$method=|int|id|

$prototype=bool isEnabled() const
$method=|bool|isEnabled|

$prototype=QKeySequence key() const
$method=|QKeySequence|key|

$prototype=QWidget * parentWidget() const
$method=|QWidget *|parentWidget|

$prototype=void setAutoRepeat(bool on)
$method=|void|setAutoRepeat|bool

$prototype=void setContext(Qt::ShortcutContext context)
$method=|void|setContext|Qt::ShortcutContext

$prototype=void setEnabled(bool enable)
$method=|void|setEnabled|bool

$prototype=void setKey(const QKeySequence & key)
$method=|void|setKey|const QKeySequence &

$prototype=void setWhatsThis(const QString & text)
$method=|void|setWhatsThis|const QString &

$prototype=QString whatsThis() const
$method=|QString|whatsThis|

#pragma ENDDUMP
