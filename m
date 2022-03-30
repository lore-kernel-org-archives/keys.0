Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6E129B0
	for <keys@linux.kernel.org>; Wed, 30 Mar 2022 20:45:05 +0000 (UTC)
Received: by mail-qv1-f43.google.com with SMTP id jo24so17914737qvb.5
        for <keys@linux.kernel.org>; Wed, 30 Mar 2022 13:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=jrFlJ/BHdkkUNlXd4n1PCu4kPDgUQmTdCEXHvrnXoCg=;
        b=QbhmYdRy81PmgGWg3BE7vn84Oy3l86hB1ZaHD6qy0HYgsHWzr1WIONMnISdvl60tks
         1D2oe8WlqZjofJ4zs98jM2oogBxZK7dCSbVz+uNSG31NAfbh0m30DLFLjOCtSZlPAT+j
         DHYc21AJhNcfn/8bWqhnnEeBHCaY0dPlnJiRg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=jrFlJ/BHdkkUNlXd4n1PCu4kPDgUQmTdCEXHvrnXoCg=;
        b=bC2lUkw6iPu8BirW8OQoIr7ac/0tDAbaYh4L7s4pYWPteWFQ0TZLiim2y65wMbGTl7
         qliRnYEvpwp97iHKcGLprodjJyXDFc788+GOp39f2DVKo2KeLggvDqQyTF0Cq/T8KBlS
         LSVj2krVEuDda38n8f1MUkpxfpYW6Yp+1VD8ujnvNdP/O3gNbSeShOPRDIAVA1FYzMT0
         pkwP+8w46+YT4sYtZcDFSOOlAXDEgMcJLZhlj06xH2Q/YI0eF93tu7y0LP7qpqA2elnt
         h7SdgZTwm7LWgczlJXSNd4ZMfLWnORahk6dFaGjs2CctgQzhoh9k7kE5W5eW0mzmlzKh
         Sg7w==
X-Gm-Message-State: AOAM530sWk1mi2Xxmag9MsJV1rR+RL7qrmXnjMoBnqCS2Cp+C6l6h1R9
	8N9zgxwV43gQ5eZ5MAaMbefaOg==
X-Google-Smtp-Source: ABdhPJyz74jTWdDPLzll7BGEerF8EgGrrLUMARbMDbcseFgF3Kqcfd0F1apekO9T9XEv78GOKlptGw==
X-Received: by 2002:a05:6214:20e9:b0:441:527f:dffa with SMTP id 9-20020a05621420e900b00441527fdffamr1019074qvk.34.1648673104230;
        Wed, 30 Mar 2022 13:45:04 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-32-216-209-220-127.dsl.bell.ca. [216.209.220.127])
        by smtp.gmail.com with ESMTPSA id i192-20020a379fc9000000b0067b314c0ff3sm11018035qke.43.2022.03.30.13.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Mar 2022 13:45:03 -0700 (PDT)
Date: Wed, 30 Mar 2022 16:45:02 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: keys@linux.kernel.org
Subject: Re: New subkey for A6CD9F096F642CB3
Message-ID: <20220330204502.jvfnjulw7vsqllcu@meerkat.local>
References: <YkS9fdnaO2HqUiV/@piout.net>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <YkS9fdnaO2HqUiV/@piout.net>

On Wed, Mar 30, 2022 at 10:28:45PM +0200, Alexandre Belloni wrote:
> -----BEGIN PGP PUBLIC KEY BLOCK-----

Updated, thanks.
