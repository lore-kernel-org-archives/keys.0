Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 743421BDC1
	for <keys@linux.kernel.org>; Wed,  4 Oct 2023 17:25:53 +0000 (UTC)
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-77409065623so3993985a.0
        for <keys@linux.kernel.org>; Wed, 04 Oct 2023 10:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1696440352; x=1697045152; darn=linux.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m7DCLjO3dnStxQ4S25agvHZmLipTSlqMVFyqfBAIlGw=;
        b=LLPgjWfeb1lFGDayEps+Iij81F72Jq41eSP51wxASjO3F4sux+0m6jBiRDB7fTFipd
         5tLMOjhYV3tfPalL7HbZIYqWY8YBXxLpU1Vspkl20GcPUtW9PDkxhZMjBWOswPhj1tZZ
         3UlrZopYME75/e4Fg8UuKl6TbW21KFD3x+cKc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696440352; x=1697045152;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m7DCLjO3dnStxQ4S25agvHZmLipTSlqMVFyqfBAIlGw=;
        b=fMSy6sWjnn98HBKUlr6J/3mNWN3qld1uh79hgDJrQ5qjP65GqoqrTZj8keMkMdzmx3
         4nQ9gRNKTaOLuU+GD9rrch8yZmqDj8euTcuV+UgAI1UdAiy5CKgdWZeC4xRNf+jSkVhx
         v6jYokmAHOIAObeHKHEAtlwQYPjdaD14xcpCyA20yAm779w8wlYnJOoudzLyVDm7tKQt
         NnV7bnhtEGMYauNKROOgG1c5/kqVmqoyu8MDGM7M3Bf/GeOMWjEygd2IayvnoIw05U7W
         SbCQlSsVaGaehnbJBtW+qrDsDTIY4wwFuVpsZ9HHpxY4q68WeGD9e7EADQKnpmKWqeCr
         7R5Q==
X-Gm-Message-State: AOJu0Yxt9B4pqAmAzwdN5umuEs0yBOUT8ILfK2/90WuMPEsBGfzvGvbe
	EYfCNAg9Su99VGF0FhAvX3rAgUiLpvy9i8aGqpw=
X-Google-Smtp-Source: AGHT+IFy7WRzG05n32mwZ1tOdN8417thxFlm4wV57uLIHJrH6nrMlJ5CSysDCLL0snNv+yDExMccZw==
X-Received: by 2002:a05:620a:1a0d:b0:773:ca55:e836 with SMTP id bk13-20020a05620a1a0d00b00773ca55e836mr3470303qkb.8.1696440352253;
        Wed, 04 Oct 2023 10:25:52 -0700 (PDT)
Received: from meerkat.local ([209.226.106.110])
        by smtp.gmail.com with ESMTPSA id z19-20020ae9c113000000b0076daaccb7f7sm1393146qki.135.2023.10.04.10.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 10:25:51 -0700 (PDT)
Date: Wed, 4 Oct 2023 13:25:43 -0400
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: keys@linux.kernel.org
Subject: Re: Updated pgp key
Message-ID: <20231004-sector-discharge-10bad0@meerkat>
References: <a803f39b-60a1-30dd-aca4-7d2e4d50182e@kernel.org>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <a803f39b-60a1-30dd-aca4-7d2e4d50182e@kernel.org>

On Wed, Oct 04, 2023 at 10:07:50AM +0900, Damien Le Moal wrote:
> Attaching my updated pgp key.

Updated, thanks.

-K
