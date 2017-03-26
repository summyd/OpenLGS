#ifndef MATIMAGEPROCESSOR_H
#define MATIMAGEPROCESSOR_H

#include <QImage>

#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"

class QImage;

class MatImageProcessor
{
public:
    MatImageProcessor();

    // Static functions
    static void Mat2QImage(const cv::Mat &src, QImage &dst);
    static void QImage2Mat(QImage const& src, cv::Mat &dst);
    // Regular functions
    void processImage(const cv::Mat &src, QImage &dst);
    void generateMask(const cv::Mat &src, cv::Mat &fgmask, cv::Mat &bgmask);

    static cv::Scalar m_lb, m_ub;

private:
    cv::Mat m_fgmask, m_bgmask, m_norm, m_inv;
};

#endif // MATIMAGEPROCESSOR_H
