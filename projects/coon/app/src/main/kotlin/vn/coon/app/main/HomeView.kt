package vn.coon.app.main

import android.content.Context
import android.graphics.drawable.GradientDrawable
import android.util.AttributeSet
import android.view.Gravity
import android.view.View
import android.widget.FrameLayout
import android.widget.ImageView
import android.widget.LinearLayout
import vn.coon.app.R

class HomeView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null,
    defStyleAttr: Int = 0,
) : FrameLayout(context, attrs, defStyleAttr) {

    private class SwatchItem(
        val colorRes: Int,
        val imageRes: Int,
    )

    private class Swatch(
        val item: SwatchItem,
        val root: FrameLayout,
        val ring: View,
        val ringGap: View,
    )

    private val swatches: List<Swatch>
    private val carImage: ImageView

    init {
        View.inflate(context, R.layout.view_home, this)
        carImage = findViewById(R.id.car_image)
        val row = findViewById<LinearLayout>(R.id.swatches_row)
        val items = listOf(
            SwatchItem(R.color.swatch_white, R.drawable.coolray_white),
            SwatchItem(R.color.swatch_red, R.drawable.coolray_red),
            SwatchItem(R.color.swatch_gray, R.drawable.coolray_gray),
            SwatchItem(R.color.swatch_green, R.drawable.coolray_green),
            SwatchItem(R.color.swatch_silver, R.drawable.coolray_silver),
        )
        swatches = items.map { item ->
            buildSwatch(row, item).also { swatch ->
                swatch.root.setOnClickListener { select(swatch) }
            }
        }
        select(swatches.first())
    }

    private fun buildSwatch(row: LinearLayout, item: SwatchItem): Swatch {
        val root = FrameLayout(context)
        root.layoutParams = LinearLayout.LayoutParams(
            resources.getDimensionPixelSize(R.dimen.swatch_size),
            resources.getDimensionPixelSize(R.dimen.swatch_size),
        ).apply {
            marginEnd = resources.getDimensionPixelSize(R.dimen.swatch_row_gap)
        }

        val ring = View(context)
        ring.layoutParams = FrameLayout.LayoutParams(
            FrameLayout.LayoutParams.MATCH_PARENT,
            FrameLayout.LayoutParams.MATCH_PARENT,
        )
        ring.setBackgroundResource(R.drawable.swatch_ring)
        ring.visibility = View.GONE

        val ringGap = View(context)
        ringGap.layoutParams = FrameLayout.LayoutParams(
            resources.getDimensionPixelSize(R.dimen.swatch_gap_size),
            resources.getDimensionPixelSize(R.dimen.swatch_gap_size),
            Gravity.CENTER,
        )
        ringGap.setBackgroundResource(R.drawable.swatch_ring_gap)
        ringGap.visibility = View.GONE

        val square = View(context)
        square.layoutParams = FrameLayout.LayoutParams(
            resources.getDimensionPixelSize(R.dimen.swatch_square_size),
            resources.getDimensionPixelSize(R.dimen.swatch_square_size),
            Gravity.CENTER,
        )
        square.background = GradientDrawable().apply {
            shape = GradientDrawable.RECTANGLE
            cornerRadius =
                resources.getDimensionPixelSize(R.dimen.swatch_corner_radius).toFloat()
            setColor(context.getColor(item.colorRes))
            setStroke(
                resources.getDimensionPixelSize(R.dimen.swatch_border_width),
                context.getColor(R.color.swatch_border),
            )
        }

        root.addView(ring)
        root.addView(ringGap)
        root.addView(square)
        row.addView(root)
        return Swatch(item, root, ring, ringGap)
    }

    private fun select(swatch: Swatch) {
        carImage.setImageResource(swatch.item.imageRes)
        swatches.forEach { current ->
            val isSelected = current === swatch
            current.ring.visibility = if (isSelected) View.VISIBLE else View.GONE
            current.ringGap.visibility = if (isSelected) View.VISIBLE else View.GONE
        }
    }
}
