Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42872F33
	for <keys@linux.kernel.org>; Fri,  5 May 2023 19:24:08 +0000 (UTC)
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-3f0b299d739so11128681cf.3
        for <keys@linux.kernel.org>; Fri, 05 May 2023 12:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1683314647; x=1685906647;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qligWJ8wIcaQXfnid8iio/1RffHHflR/W1aLfDPA0YQ=;
        b=Dmz09vV+sI2lcSyhWVGBn+Unsey1LtzreZMLvhJu+mGMIxJvfCgx0bZM54Lnyf4rjI
         wLFpUqtNb8SPL3ndSzd1fIGJfwpkdzq9UszojbWUwYZTc2cqO+P5hbo8EqOsO6Pv67E2
         aMVmY9A7YlLJxjAuQV3dnnz+dhzdN3eceEMbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683314647; x=1685906647;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qligWJ8wIcaQXfnid8iio/1RffHHflR/W1aLfDPA0YQ=;
        b=RXZ4NSWoR/U9+TgGCBtsVKhqAS9O2OQe9CJaNdo2xCpMP+gzB7COmVAaeLDKLEEben
         YJViwebiKdXG8wThLUQwIX+8f2czjNURkrrP17+W1QC/YD4miq/L7G8wUYdrH/KjuIB4
         h3i6Q3ZsRn28LtVsGFEB5cQFEvZ/yckzCwKAtPf0MiwZpOvtWWrIEfgNNMAxDJtokUkS
         PzcUgdQNifHmrPWmpxn22637yugpPgLc8/UbFBZeIRzU5/Hq09v6wL8+ozRSD7sDDZZN
         7C/6ljwXddx8D1s/zTAocpUqrn96FoNfm1s1RYqjveIW7a5jk9m7vEYOLZpMwOeLyW7Z
         kqIw==
X-Gm-Message-State: AC+VfDw+SM/ONeATmoWKfDXxs7z6rRTBu7Q7TivaOsondpSIAFAQltqc
	Ysj89nUaKquVKbqFwkav++JiPA==
X-Google-Smtp-Source: ACHHUZ7UUl2g5Xr+iy5p/AIa34DenS6n1VxZZtlzlYVYbL56Py8KJL0uyoKJV0zPmHvv6K4y3n/H7Q==
X-Received: by 2002:a05:622a:174a:b0:3e3:93ca:42d9 with SMTP id l10-20020a05622a174a00b003e393ca42d9mr4439069qtk.65.1683314647479;
        Fri, 05 May 2023 12:24:07 -0700 (PDT)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-132.dsl.bell.ca. [209.226.106.132])
        by smtp.gmail.com with ESMTPSA id r7-20020a05620a03c700b00753bc3a49e7sm800861qkm.35.2023.05.05.12.24.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 12:24:07 -0700 (PDT)
Date: Fri, 5 May 2023 15:24:05 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Kris Chaplin <kristian.chaplin@gmail.com>
Cc: keys@linux.kernel.org
Subject: Re: Key for Kris Chaplin
Message-ID: <20230505-both-affix-4dcecb@meerkat>
References: <e02fda44-6f0f-9ea0-edd3-67c4bf552fe0@gmail.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e02fda44-6f0f-9ea0-edd3-67c4bf552fe0@gmail.com>

On Fri, May 05, 2023 at 04:43:52PM +0100, Kris Chaplin wrote:
> Hello,
> 
> Please find my key for addition.

Added, thanks.

-K
