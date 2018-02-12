#ifndef MAZE_H
#define MAZE_H

#include <opencv2/imgproc.hpp>
#include <opencv2/core.hpp>
#include <opencv2/opencv.hpp>
#include <point.h>

namespace ecn
{

typedef std::pair<int, int> Pair;

class Maze
{
public:
    Maze() {}

    Maze(std::string _filename) : filename(_filename)
    {
        // load image
        im = cv::imread("../mazes/" + filename, cv::IMREAD_GRAYSCALE);
        cv::cvtColor(im, out, cv::COLOR_GRAY2BGR);
    }

    Maze(int height, int width)
    {
        im = cv::Mat(height, width, CV_8UC1, cv::Scalar(0));
    }


    int cell(int x, int y)
    {
        if(x < 0 || y < 0 || x >= im.cols || y >= im.rows)
            return 0;
        return im.at<uchar>(y,x) ? 1 : 0;
    }

    int height() {return im.rows;}
    int width() {return im.cols;}

    ecn::Point start()
    {
        Point ret;
        for(ret.y=0;ret.y<im.rows; ++ret.y)
        {
            for(ret.x=0;ret.x<im.cols;++ret.x)
            {
                if(cell(ret.x, ret.y))
                {
                    std::cout << "Start @ (" << ret.x << ", " << ret.y << ")\n";
                    return ret;
                }
            }
        }
        return ret;
    }

    ecn::Point end()
    {
        Point ret;
        for(ret.y=im.rows-1;ret.y> 0; --ret.y)
        {
            for(ret.x=im.cols-1;ret.x>0;--ret.x)
            {
                if(cell(ret.x, ret.y))
                {
                    std::cout << "End @ (" << ret.x << ", " << ret.y << ")\n";
                    return ret;
                }
            }
        }
        return ret;
    }

    void passThrough(int x, int y)
    {
        passing.push_back(cv::Point(x,y));
    }


    void dig(int x, int y)
    {
        im.at<uchar>(y,x) = 255;
    }

    void display(const std::string &name, const cv::Mat &im)
    {
        if(std::find(windows.begin(), windows.end(), name) == windows.end())
        {
            windows.push_back(name);
            cv::namedWindow(name, cv::WINDOW_NORMAL);
            cv::resizeWindow(name, 1000, (1000*im.rows)/im.cols);
        }
        cv::imshow(name, im);
    }

    void write(int x, int y, int r, int g, int b, bool show = true)
    {
        out.at<cv::Vec3b>(y, x) = cv::Vec3b(b, g, r);
        if(show)
        {
            display("Maze", out);
            cv::waitKey(1);
        }
    }

    void save()
    {
        cv::imwrite("../mazes/maze.png", im);
        display("Maze", im);
    }

    void saveSolution(std::string suffix)
    {
        cv::cvtColor(im, out, cv::COLOR_GRAY2BGR);
        cv::Vec3b col(0, 255, 0);

        col[1] = 0;
        for(int i = 0; i < passing.size(); ++i)
        {
            col[2] = i*255/passing.size();
            col[0] = 255-col[2];
            out.at<cv::Vec3b>(passing[i]) = col;
        }

        // re-write black nodes just to be sure...
        for(int x = 0; x < im.cols; ++x)
        {
            for(int y = 0; y < im.rows; ++y)
            {
                if(!cell(x,y))
                    write(x,y,0,0,0,false);
            }
        }

        int dot = filename.find(".");
        std::string name = filename.substr(0, dot) + "_" + suffix + ".png";
        cv::imwrite("../mazes/" + name, out);
        display("Solution", out);
    }
protected:
    cv::Mat im, out;
    std::string filename;
    std::vector<cv::Point> passing;
    std::vector<std::string> windows;
};
}


#endif