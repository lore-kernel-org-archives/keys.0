Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2038BF3
	for <keys@linux.kernel.org>; Wed,  8 Mar 2023 19:26:43 +0000 (UTC)
Received: by mail-qv1-f43.google.com with SMTP id ev13so11801629qvb.10
        for <keys@linux.kernel.org>; Wed, 08 Mar 2023 11:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1678303602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gKbAo8knxCND7nFOYSgHJQAX+2MmAtmvwga7pjLQmkc=;
        b=iH9QDNYvyjgeQalIt2Ic9vf++Yxw1ck0Es1AA+i0Odwb7crnTWPXKnPqWtlgELNkN3
         mRJTV7M3WVzrAxdpTXpxGQHw/XCcZ1EX0NgihbmDtTn4goqPRcE7Kwft1uLHZGRoM11o
         g2qc5oWpFa8/RrohPIZfVHZ4GJulI5sbt7ZIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678303602;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gKbAo8knxCND7nFOYSgHJQAX+2MmAtmvwga7pjLQmkc=;
        b=eY7eST2uvfM6H3qChAgq8CcEcDpfMWYJ6zDBCziwoFEqYBD45Z2dI9bhB4+dC50+12
         ksSWxx7cvDVOW1e7cqLW5LYn3l/rjRNVf0l7yyOMj71K00fkz8g8qXHDv1KN0/QvNuOY
         b6jZjJIa86D6Q8aJTZT9iWGxVNGSaqaAFeotppqFe179KSrsF8ajwzFIbo1fNmUkUh/H
         2bopHjolKDVDQHcnDhOyGObClvSAa4rZk0BHsXNKeC0uf+L7G8kDYDhn0dxejsKKCUwb
         r3ZTuc8ZJ5wtuk46qRzDNCogk0jmxdf2SMBqz25Mg41AG3+GXV2CIQYVyEvqvoQlna8Z
         ZD5Q==
X-Gm-Message-State: AO0yUKUVDVWEv1qNYHpZ97qCQYiQ+8QYV/9fauHb334PqtBoZ9Fu96fD
	H10G6UiNqRwJ2iK77h2uUCUkJjB5CAiXQv0+Ons=
X-Google-Smtp-Source: AK7set92fKdb2z+zZiKrTT9BkgooEZYoLsNLbe73rJ4mZi/XEIyrVUr22GgfvFaGuS0YwoZw5oQHog==
X-Received: by 2002:a05:6214:230d:b0:56e:a756:91d with SMTP id gc13-20020a056214230d00b0056ea756091dmr34083458qvb.50.1678303602148;
        Wed, 08 Mar 2023 11:26:42 -0800 (PST)
Received: from nitro.local (bras-base-mtrlpq5031w-grc-30-209-226-106-7.dsl.bell.ca. [209.226.106.7])
        by smtp.gmail.com with ESMTPSA id dt11-20020a05620a478b00b0073b399700adsm11902924qkb.3.2023.03.08.11.26.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Mar 2023 11:26:41 -0800 (PST)
Date: Wed, 8 Mar 2023 14:26:40 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: New signature for Krzysztof Kozlowski
Message-ID: <20230308192640.xnxhbahotxf53xnt@nitro.local>
References: <ae92b221-9902-ac21-e394-d48fbd18765c@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <ae92b221-9902-ac21-e394-d48fbd18765c@kernel.org>

On Wed, Mar 08, 2023 at 12:59:05PM +0100, Krzysztof Kozlowski wrote:
> New signature for keys/1B93437D3B41629B.asc

Updated, thanks.

-K
