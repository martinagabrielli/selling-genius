<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<main id="main" class="m-all t-2of3 d-5of7 cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

                            <div class="delivery">
                                <img class="delivery-img" src="<?php echo get_template_directory_uri() . '/library/images/delivery.png' ?>">

                                <?php if( get_field('delivery') ): ?>
                                    <p><?php the_field('delivery'); ?></p>
                                <?php endif; ?>
                            </div>

						</main>

				</div>

			</div>


<?php get_footer(); ?>
