/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HCODEBLOCKVALIDATOR_H
#define HCODEBLOCKVALIDATOR_H

#include <QValidator>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#include "hbdate.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HCodeBlockValidator : public QValidator
{
    Q_OBJECT
public:
    explicit HCodeBlockValidator(QObject *parent = 0);
    HCodeBlockValidator(PHB_ITEM codeblock, QObject *parent = 0);
    ~HCodeBlockValidator();

    QValidator::State validate ( QString & input, int & pos ) const;
    void fixup( QString & input ) const;

    PHB_ITEM block;

};

#endif // HCODEBLOCKVALIDATOR_H
