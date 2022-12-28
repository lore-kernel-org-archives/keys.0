Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DC61863
	for <keys@linux.kernel.org>; Wed, 28 Dec 2022 14:51:53 +0000 (UTC)
Received: by mail-qt1-f179.google.com with SMTP id z12so12855820qtv.5
        for <keys@linux.kernel.org>; Wed, 28 Dec 2022 06:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GLNsWH+RHim7Hrr/kOvYaYAhSScwxibiQAZ1/HqyMMI=;
        b=cSh+tRYiC58i1GtqTKMM/WVPAELYmR7v0PNbA5cGVcNGyn+ERyD+t2y8OHLk4Drqnf
         d1ygdbWpjnhrvScRQlP0oe4NyRRJUZYzIFrxdq2Mgr0EJRzfwZU/hv+FV+HWw/N4/jlI
         nlB9AzFfGaSuFKZDE4gOChYb+uA4iX7v8T2rk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GLNsWH+RHim7Hrr/kOvYaYAhSScwxibiQAZ1/HqyMMI=;
        b=1oRRtLxN6D9rPWww/gmSFylHVsMMkqBIpCMl1vjyb9A25JVnu5LWF6Led9L7dV9ZwY
         IBsWKIfJdiXjj9Loy8A9DUATeviNSHe6WSFsOVmPGZkrHRlcjhg3b/bjGiz1i1yGVAFC
         oMv6o4b8JiMeZK5yCAKTZ+MQGhanYqPGQbAljzxbHgGSJVX5FUWn5OULki+TRi2wdj5Q
         rZrtEyD4gXAMnZMXDPEQKkrWh74GFuSxb/SL/rjcnWtjc1p/4H9Nzg8KYwO6bxFDTdrm
         0uR40Ihus37TzpO9p/HASsnNVTb2fadIJEUu1qWMcO8Sjy+cDQdi5nU3Dhu+oDDSLJEO
         8Drw==
X-Gm-Message-State: AFqh2kqYw/1D9oUpyvidMyiY0DI4YXC7MPm0K3xvb0cXC6K+zZIAX838
	Uh4J7nW07AzxHj/kikDndw0lteoHVhDtBHaV
X-Google-Smtp-Source: AMrXdXtkRqc9WztMX4/06QgMmzmz3KbMbGEPgvFUswBo6jMCUAQGTwM8MxVVnlIhNNM23Mj3SgYqfA==
X-Received: by 2002:a05:622a:230b:b0:3a7:d465:e with SMTP id ck11-20020a05622a230b00b003a7d465000emr37726864qtb.13.1672239112063;
        Wed, 28 Dec 2022 06:51:52 -0800 (PST)
Received: from meerkat.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id v7-20020a05620a0f0700b006faf76e7c9asm11490051qkl.115.2022.12.28.06.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Dec 2022 06:51:51 -0800 (PST)
Date: Wed, 28 Dec 2022 09:51:50 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: New signature for Krzysztof Kozlowski
Message-ID: <20221228145150.i6mozcbkdqkrinoz@meerkat.local>
References: <fd860de1-20f6-592e-ded0-51b72015a1de@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <fd860de1-20f6-592e-ded0-51b72015a1de@kernel.org>

On Wed, Dec 28, 2022 at 01:40:52PM +0100, Krzysztof Kozlowski wrote:
> New signature for keys/1B93437D3B41629B.asc

Updated, thanks.
