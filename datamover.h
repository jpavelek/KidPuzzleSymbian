#ifndef DATAMOVER_H
#define DATAMOVER_H

#include <QObject>
#include <QtDeclarative>
#include <QSettings>
#include <QWidget>
#include <phonon/mediaobject.h>
#include <phonon/audiooutput.h>

class DataMover : public QObject
{
    Q_OBJECT
public:
    explicit DataMover(QObject *parent = 0);

signals:

public slots:
    bool wasReviewed(void);
    void setReviewed(void);
private:
    QSettings *settings;
    Phonon::MediaObject *mMediaObject;
    Phonon::AudioOutput *mAudioOutput;

};

#endif // DATAMOVER_H
