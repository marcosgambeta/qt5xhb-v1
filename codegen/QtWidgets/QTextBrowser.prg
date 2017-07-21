$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QTextBrowser INHERIT QTextEdit

   METHOD new
   METHOD delete
   METHOD backwardHistoryCount
   METHOD clearHistory
   METHOD forwardHistoryCount
   METHOD historyTitle
   METHOD historyUrl
   METHOD isBackwardAvailable
   METHOD isForwardAvailable
   METHOD openExternalLinks
   METHOD openLinks
   METHOD searchPaths
   METHOD setOpenExternalLinks
   METHOD setOpenLinks
   METHOD setSearchPaths
   METHOD source
   METHOD loadResource
   METHOD backward
   METHOD forward
   METHOD home
   METHOD reload
   METHOD setSource

   METHOD onAnchorClicked
   METHOD onBackwardAvailable
   METHOD onForwardAvailable
   METHOD onHighlighted1
   METHOD onHighlighted2
   METHOD onHistoryChanged
   METHOD onSourceChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextBrowser ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
int backwardHistoryCount () const
*/
$method=|int|backwardHistoryCount|

/*
void clearHistory ()
*/
$method=|void|clearHistory|

/*
int forwardHistoryCount () const
*/
$method=|int|forwardHistoryCount|

/*
QString historyTitle ( int i ) const
*/
$method=|QString|historyTitle|int

/*
QUrl historyUrl ( int i ) const
*/
$method=|QUrl|historyUrl|int

/*
bool isBackwardAvailable () const
*/
$method=|bool|isBackwardAvailable|

/*
bool isForwardAvailable () const
*/
$method=|bool|isForwardAvailable|

/*
bool openExternalLinks () const
*/
$method=|bool|openExternalLinks|

/*
bool openLinks () const
*/
$method=|bool|openLinks|

/*
QStringList searchPaths () const
*/
$method=|QStringList|searchPaths|

/*
void setOpenExternalLinks ( bool open )
*/
$method=|void|setOpenExternalLinks|bool

/*
void setOpenLinks ( bool open )
*/
$method=|void|setOpenLinks|bool

/*
void setSearchPaths ( const QStringList & paths )
*/
$method=|void|setSearchPaths|const QStringList &

/*
QUrl source () const
*/
$method=|QUrl|source|

/*
virtual QVariant loadResource ( int type, const QUrl & name )
*/
$method=|QVariant|loadResource|int,const QUrl &

/*
virtual void backward ()
*/
$method=|void|backward|

/*
virtual void forward ()
*/
$method=|void|forward|

/*
virtual void home ()
*/
$method=|void|home|

/*
virtual void reload ()
*/
$method=|void|reload|

/*
virtual void setSource ( const QUrl & name )
*/
$method=|void|setSource|const QUrl &

#pragma ENDDUMP
