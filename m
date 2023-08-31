Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C038F57
	for <keys@linux.kernel.org>; Thu, 31 Aug 2023 20:02:58 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-76da1331db9so107990885a.0
        for <keys@linux.kernel.org>; Thu, 31 Aug 2023 13:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1693512177; x=1694116977; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WM/9oZi7RTqvtWVQ91RjQxvlp53aZ9MGI+DlvzRfPhk=;
        b=Lun/eQAb0jIVvTW3lgh819RSy6yZov3wznun22JyuYpK1g0A9TZ3jaeKmouJlSHcXe
         2Jw6rdLOaFJPBZKt8nf7NmwfP7RCxe8QXZ+DqohRHBDXsEHt9LLMSsW4geoVYsfpxSVp
         ZQIdRz3HjpInNg/kBaGNhoLVz0iLH1z3hdtpY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693512177; x=1694116977;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WM/9oZi7RTqvtWVQ91RjQxvlp53aZ9MGI+DlvzRfPhk=;
        b=PsTIxxzfyD4pObWyKepJ5Dh9QsO0OCykbYk5QZPnm1sFJfFCIkfKkyu0hAx3bJRogv
         t3jZd5uJNsRpa/Py6FiJOuA9nqgi94mnf7nvwjn7NXn8WW2YeHKSNP/cM9sGNkZzwEYg
         9zj2Q3wzr7Nc6c2ZbTb88NmrfWjOIXB7NLoeOSMUvb2CiC04TTl0JFJYvz6eeiEXBHaZ
         Q8o/jCv94JeuLnkUpl84Hjnw7wdwt+hvqjEJRg12q0OeiSEe3pgxVxZX61uRXZrMsa4f
         svTzc+vfaZx2KHljcC0dqILYW4HbSwNZitBROquwRDXqzaE1p2aRYUhIEd9Q49MDkDwy
         /FoA==
X-Gm-Message-State: AOJu0Yz70+Sc7oKTTL4n3iiTOQ5Ml4qw61O9WnByeGDWnbdhrSBBVCLC
	U57gIaWhKvUwk5w2r6omlbR58KEGR9to4ALWky0=
X-Google-Smtp-Source: AGHT+IEbLrOFulw9d/U4xczEhkYveQq92d0FA44/iHDBiPZ/e4LfhE76cqeP0Oa3hVpqTiaehA8umQ==
X-Received: by 2002:a05:620a:448b:b0:76c:e83d:2fb9 with SMTP id x11-20020a05620a448b00b0076ce83d2fb9mr4762655qkp.12.1693512177450;
        Thu, 31 Aug 2023 13:02:57 -0700 (PDT)
Received: from nitro.local ([209.226.106.246])
        by smtp.gmail.com with ESMTPSA id x27-20020ac84d5b000000b00403bf34266csm865297qtv.30.2023.08.31.13.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Aug 2023 13:02:57 -0700 (PDT)
Date: Thu, 31 Aug 2023 16:02:48 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: keys@linux.kernel.org
Subject: Re: Updated subkey for A6CD9F096F642CB3
Message-ID: <20230831-september-smoky-conch-c67c98@meerkat>
References: <20230830182806205f5ab4@mail.local>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230830182806205f5ab4@mail.local>

On Wed, Aug 30, 2023 at 08:28:06PM +0200, Alexandre Belloni wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.

-K
