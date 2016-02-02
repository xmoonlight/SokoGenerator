#ifndef SOKOGENERATOR_H
#define SOKOGENERATOR_H

#include <QObject>
#include <vector>

#define WALL '#'
#define FLOOR ' '


class SokoGenerator : public QObject{
    Q_OBJECT

private:
    int roomWidth;
    int roomHeight;
    int noOfBoxes;
    int noOfLevels;
    int difficulty;
    int percentage;

    struct Level {
        std::vector< std::vector<char> > grid;
    };

    std::vector<Level> levels;

public:
    explicit SokoGenerator(QObject *parent = 0);
    ~SokoGenerator();

    void setRoomWidth(int value){ roomWidth = value; }
    void setRoomHeight(int value){ roomHeight = value; }
    void setBoxes(int value){ noOfBoxes = value; }
    void setLevels(int value){ noOfLevels = value; }
    void setDifficulty(int value){ difficulty = value; }
    void setPercentage(int value){ percentage = value; }

    void updatePercentage(float value);
    void listLevelSet(std::vector<Level>);

    void generateLevel();
    void generateLevel(int roomWidth, int roomHeight, int noOfBoxes, int difficulty, int levelNumber);
    void clearVectors();

    int randomNumber(int min, int max);

    void initLevel(Level *level, int roomWidth, int roomHeight);
    std::vector< std::vector<char> > getLevel(int level);

signals:
    void changeProgressBar(float);
    void addToList(int);

};

#endif // SOKOGENERATOR_H
