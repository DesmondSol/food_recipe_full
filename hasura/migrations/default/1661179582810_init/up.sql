SET check_function_bodies = false;
CREATE TABLE public.comments (
    id integer NOT NULL,
    recipe_id integer NOT NULL,
    user_id integer NOT NULL,
    comment text NOT NULL
);
COMMENT ON TABLE public.comments IS 'comments for recipes is stored here';
CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
CREATE TABLE public.favorite (
    id integer NOT NULL,
    user_id integer NOT NULL,
    recipe_id integer NOT NULL
);
COMMENT ON TABLE public.favorite IS 'favorite items for users is stored here';
CREATE SEQUENCE public.favorite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.favorite_id_seq OWNED BY public.favorite.id;
CREATE TABLE public.ingredients (
    id integer NOT NULL,
    recipe_id integer NOT NULL,
    ingridients text NOT NULL
);
COMMENT ON TABLE public.ingredients IS 'ingredients used for the recipes';
CREATE SEQUENCE public.ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.ingredients_id_seq OWNED BY public.ingredients.id;
CREATE TABLE public.likes (
    id integer NOT NULL,
    user_id integer NOT NULL,
    recipe_id integer NOT NULL
);
COMMENT ON TABLE public.likes IS 'likes of recipes is stored here';
CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;
CREATE TABLE public.ratings (
    id integer NOT NULL,
    recipe_id integer NOT NULL,
    user_id integer NOT NULL,
    rating numeric DEFAULT 0 NOT NULL,
    CONSTRAINT "rating limit" CHECK (((rating >= (0)::numeric) AND (rating < (6)::numeric)))
);
COMMENT ON TABLE public.ratings IS 'a rating value is store here for the recipes here 5 being the highest and 0 the lowest';
CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
CREATE TABLE public.recipe (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    preparation_time integer NOT NULL,
    owner_user_id integer NOT NULL
);
COMMENT ON TABLE public.recipe IS 'food recipes are stored here';
CREATE SEQUENCE public.recipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.recipe_id_seq OWNED BY public.recipe.id;
CREATE TABLE public.recipe_images (
    id integer NOT NULL,
    recipe_id integer NOT NULL,
    image text NOT NULL
);
COMMENT ON TABLE public.recipe_images IS 'images or tumbnail info provided here';
CREATE SEQUENCE public.recipe_images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.recipe_images_id_seq OWNED BY public.recipe_images.id;
CREATE TABLE public.recipe_steps (
    id integer NOT NULL,
    recipe_id integer NOT NULL,
    steps_description text NOT NULL
);
COMMENT ON TABLE public.recipe_steps IS 'steps on preparation of the food';
CREATE SEQUENCE public.recipe_steps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.recipe_steps_id_seq OWNED BY public.recipe_steps.id;
CREATE TABLE public.user_account (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL,
    phone bigint NOT NULL,
    email text NOT NULL,
    password text NOT NULL
);
COMMENT ON TABLE public.user_account IS 'all user info is stored here';
CREATE SEQUENCE public.user_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.user_account_id_seq OWNED BY public.user_account.id;
ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
ALTER TABLE ONLY public.favorite ALTER COLUMN id SET DEFAULT nextval('public.favorite_id_seq'::regclass);
ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingredients_id_seq'::regclass);
ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);
ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
ALTER TABLE ONLY public.recipe ALTER COLUMN id SET DEFAULT nextval('public.recipe_id_seq'::regclass);
ALTER TABLE ONLY public.recipe_images ALTER COLUMN id SET DEFAULT nextval('public.recipe_images_id_seq'::regclass);
ALTER TABLE ONLY public.recipe_steps ALTER COLUMN id SET DEFAULT nextval('public.recipe_steps_id_seq'::regclass);
ALTER TABLE ONLY public.user_account ALTER COLUMN id SET DEFAULT nextval('public.user_account_id_seq'::regclass);
ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.favorite
    ADD CONSTRAINT favorite_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.recipe_images
    ADD CONSTRAINT recipe_images_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.recipe_steps
    ADD CONSTRAINT recipe_steps_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_email_key UNIQUE (email);
ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_phone_key UNIQUE (phone);
ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.favorite
    ADD CONSTRAINT favorite_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.favorite
    ADD CONSTRAINT favorite_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.user_account(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.recipe_images
    ADD CONSTRAINT recipe_images_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.recipe
    ADD CONSTRAINT recipe_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.user_account(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.recipe_steps
    ADD CONSTRAINT recipe_steps_recipe_id_fkey FOREIGN KEY (recipe_id) REFERENCES public.recipe(id) ON UPDATE CASCADE ON DELETE CASCADE;
